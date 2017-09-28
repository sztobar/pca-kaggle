import numpy as np

def pca(X, red_cmps_to):
    X_mean = np.mean(X, axis=0)
    X -= X_mean
    
    X_Cov = np.cov(np.transpose(X))
    
    U, S, V = np.linalg.svd(X_Cov)
    evecs = U
    evals = S
    indices = np.argsort(evals)
    indices = indices[::-1]
    evecs = evecs[:,indices]
    evals = evals[indices]
    
    evecs = evecs[:,:red_cmps_to]
    X_reduced = np.dot(np.transpose(evecs), np.transpose(X))
    
    X_reduced = np.transpose(X_reduced)
    return X_reduced, evecs
