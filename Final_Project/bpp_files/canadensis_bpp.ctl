seed =  -1

       seqfile = canadensis.phy
      Imapfile = Imapcanadensis3.txt
       outfile = 3canA11out.txt
      mcmcfile = 3canA11mcmc.txt

 speciesdelimitation = 1 0 2    * speciesdelimitation algorithm0 and finetune(e)
*  speciesdelimitation = 1 1 2 1  * speciesdelimitation algorithm1 finetune (a m)

speciestree = 1

*  uniformrootedtrees = 1         * 0 means uniform labeled histories
  speciesmodelprior = 1         * 0: uniform labeled histories; 1:uniform rooted trees; 2:user probs

  species&tree = 3 c t m
                   2    2    2 	*it says in the help files that it's okay to put 2 even if there are more than 2
                   (c,(t,m));    *it has to be binary

	phase = 0 0 0 *these are phased haplotype sequences

       usedata = 1    * 0: no data (prior); 1:seq like
         nloci = 1  * all the regions are concatenated into one alignment

     cleandata = 0    * remove sites with ambiguity data (1:yes, 0:no)?

    thetaprior = 3 0.02    # gamma(a, b) for theta; There were 1% variable characters according to the paper; no e go back & estimate later 
      tauprior = 3 0.02  # gamma(a, b) for root tau & Dirichlet(a) for other tau's 
       phiprior = 1 1

      heredity = 0   # (0: No variation, 1: estimate, 2: from file) & a_gamma b_gamma (if 1)
     locusrate = 0   # (0: No variation, 1: estimate, 2: from file) & a_Dirichlet (if 1)

       finetune = 1: .01 .02 .03 .04 .05 .01 .01 # auto (0 or 1): finetune for GBtj, GBspr, theta, tau, mix, locusrate, seqerr

         print = 1 0 0 0   * MCMC samples, locusrate, heredityscalars Genetrees
        burnin = 10000
      sampfreq = 2
       nsample = 100000
#       scaling = 1
#       threads = 4