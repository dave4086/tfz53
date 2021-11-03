;
;  Database file gallylwtestdomain.com.dns for Default zone scope in zone gallylwtestdomain.com.
;      Zone version:  2019102987
;

@                       60	IN  SOA ns1.lifeway.com. admin.lwdmz.org. (
                        		2019102987   ; serial number
                        		900          ; refresh
                        		600          ; retry
                        		86400        ; expire
                        		3600       ) ; default TTL

;
;  Zone NS records
;

@                       NS	ns1.lifeway.com.
@                       NS	ns1.cnchost.com.
@                       NS	ns2.cnchost.com.

;
;  Zone records
;

@                       600	MX	1	mx1.hc4270-64.iphmx.com.
@                       600	MX	5	mx2.hc4270-64.iphmx.com.
@                       600	TXT	( "google-site-verification=D3qF9SiItrSQ1FhVnQ0_mVoFp3R0-usl6ZhNmPfM0TM" )
@                       600	TXT	( "v=spf1 include:spf1.gallylwtestdomain.com include:spf2.gallylwtestdomain.com ~all" )
_dmarc                  600	TXT	( "v=DMARC1; p=reject; rau=mailto:dmarc@gallylwtestdomain.com" )
google._domainkey       600	TXT	( "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCY0R/4rDR7HgwQYM7l0+H9VBOzDwU8cfxFk6c4EoyVM9ExMp71nGCO9JzvekkIiCQTh3FDTaKPp1TeHtbiLW83tnBZXUatA2YuZHE0t8MMlrvx2ewc81ADUP7g0DhWNmKr1a0RYjk494bbKgLsBmC5G3Hs/zDLXWTm82JulU6C+wIDAQAB" )
spf1                    600	TXT	( "v=spf1 ip4:199.245.195.0/24 ip4:75.101.154.249 ip4:66.213.178.48 ip4:66.77.223.5 include:_spf.psm.knowbe4.com include:spf.protection.outlook.com ~all" )
spf2                    600	TXT	( "v=spf1 include:_spf.google.com include:servers.mcsv.net include:_spf.createsend.com include:spf.constantcontact.com a:mx.proofhq.com ~all" )
