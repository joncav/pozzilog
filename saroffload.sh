cript to create backup and rename with current hostname and date of sar file and offload to storage facility.

  # Cycle through directory once looking for pertinent sar files.

    now=`date +"%m_%d_%Y"`
      ls -1 /var/log/sa/sa* | while read sarname
               do
		                  mv "$sarname" $(echo "$HOSTNAME"_"$now.bkup")
				           done

					    # This section will need to be modified. It is a place holder for code to offload the designated sar backup
					     # file just created to the localhost, a central logging host or database server. This is dependent upon your ops.
					      # i.e. scp /var/log/<sarlogname> <username>@<host>:/<desired location>

					       mv /var/log/sa/*.bkup /tmp/sysstatdbprepare/

					         exit
