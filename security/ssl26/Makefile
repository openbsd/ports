# $OpenBSD: Makefile,v 1.4 2000/04/04 21:17:44 beck Exp $

DISTNAME=	ssl26	
CATEGORIES=	security
MASTER_SITES=	ftp://sunsite.ualberta.ca/pub/Local/People/beck/
NO_CDROM=	"CRYPTO: Patent Issues until Sep 21 2000"
RESTRICTED=	"Crypto; export-controlled"

MAINTAINER=	beck@openbsd.org

PERMIT_PACKAGE_CDROM=   No
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= No
PERMIT_DISTFILES_FTP=   Yes

fetch-depends:
.if !defined(NO_WARNINGS)
.if !defined(USA_RESIDENT) || ${USA_RESIDENT:U} != NO
	@echo ""
	@echo "You must set variable USA_RESIDENT to YES if you are a USA"
	@echo "resident or NO otherwise.  USA residents must *NOT* use this"
	@echo "port until the RSA Inc. patent on RSA expires \(RSA Inc. holds"
	@echo "a patent on RSA in the USA - using RSA implementations"
	@echo "other than RSAREF in the USA will violate the US patent\)."
	@echo ""
	@echo "USA residents should use the sslUSA port instead."
	@false
.endif
.endif

.include <bsd.port.mk>
