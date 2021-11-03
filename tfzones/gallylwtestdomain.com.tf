resource "aws_route53_zone" "gallylwtestdomain-com" {
  name = "gallylwtestdomain.com"
}

resource "aws_route53_record" "spf2-gallylwtestdomain-com-TXT" {
  zone_id = aws_route53_zone.gallylwtestdomain-com.zone_id
  name    = "spf2.gallylwtestdomain.com."
  type    = "TXT"
  ttl     = "600"
  records = ["v=spf1 include:_spf.google.com include:servers.mcsv.net include:_spf.createsend.com include:spf.constantcontact.com a:mx.proofhq.com ~all"]
}

resource "aws_route53_record" "spf1-gallylwtestdomain-com-TXT" {
  zone_id = aws_route53_zone.gallylwtestdomain-com.zone_id
  name    = "spf1.gallylwtestdomain.com."
  type    = "TXT"
  ttl     = "600"
  records = ["v=spf1 ip4:199.245.195.0/24 ip4:75.101.154.249 ip4:66.213.178.48 ip4:66.77.223.5 include:_spf.psm.knowbe4.com include:spf.protection.outlook.com ~all"]
}

resource "aws_route53_record" "google-_domainkey-gallylwtestdomain-com-TXT" {
  zone_id = aws_route53_zone.gallylwtestdomain-com.zone_id
  name    = "google._domainkey.gallylwtestdomain.com."
  type    = "TXT"
  ttl     = "600"
  records = ["v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCY0R/4rDR7HgwQYM7l0+H9VBOzDwU8cfxFk6c4EoyVM9ExMp71nGCO9JzvekkIiCQTh3FDTaKPp1TeHtbiLW83tnBZXUatA2YuZHE0t8MMlrvx2ewc81ADUP7g0DhWNmKr1a0RYjk494bbKgLsBmC5G3Hs/zDLXWTm82JulU6C+wIDAQAB"]
}

resource "aws_route53_record" "gallylwtestdomain-com-TXT" {
  zone_id = aws_route53_zone.gallylwtestdomain-com.zone_id
  name    = "gallylwtestdomain.com."
  type    = "TXT"
  ttl     = "600"
  records = ["google-site-verification=D3qF9SiItrSQ1FhVnQ0_mVoFp3R0-usl6ZhNmPfM0TM", "v=spf1 include:spf1.gallylwtestdomain.com include:spf2.gallylwtestdomain.com ~all"]
}

resource "aws_route53_record" "gallylwtestdomain-com-MX" {
  zone_id = aws_route53_zone.gallylwtestdomain-com.zone_id
  name    = "gallylwtestdomain.com."
  type    = "MX"
  ttl     = "600"
  records = ["1 mx1.hc4270-64.iphmx.com.", "5 mx2.hc4270-64.iphmx.com."]
}

resource "aws_route53_record" "_dmarc-gallylwtestdomain-com-TXT" {
  zone_id = aws_route53_zone.gallylwtestdomain-com.zone_id
  name    = "_dmarc.gallylwtestdomain.com."
  type    = "TXT"
  ttl     = "600"
  records = ["v=DMARC1; p=reject; rau=mailto:dmarc@gallylwtestdomain.com"]
}
