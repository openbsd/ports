# $OpenBSD: Makefile,v 1.2 2000/05/19 16:49:48 beck Exp $


PKGNAME=	ssl-2.7-intl
PREFIX=		/usr/local/lib
CATEGORIES=	security
DISTNAME=	ssl27
FAKE=		Yes
MASTER_SITES=	ftp://sunsite.ualberta.ca/pub/Local/People/beck/
NO_CDROM=	"CRYPTO: Patent Issues until Sep 21 2000"
RESTRICTED=	"Crypto; export-controlled"

MAINTAINER=	beck@openbsd.org

PERMIT_PACKAGE_CDROM=   No
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= No
PERMIT_DISTFILES_FTP=   Yes

WRKSRC=${WRKDIST}/libssl
MAKE_FLAGS=NOMAN=Yes

post-extract:
	@test -d /usr/src/lib/libssl || \
	{ echo "You must have /usr/src/lib/libssl checked out from cvs to build this port"; exit 1; }
	/usr/bin/lndir -s -e obj -e obj.${MACHINE_ARCH} /usr/src/lib/libssl ${WRKSRC}

post-patch:
	@cd ${WRKSRC} && mv src src-patent && \
		cd src-patent && cat ${WRKDIST}/src-patent.patch | patch -p0


MAKE_FILE=Makefile.bsd-wrapper

do-configure:
	@cd ${WRKSRC} && ${MAKE} -f ${MAKE_FILE} obj
	@cd ${WRKSRC} && ${MAKE} -f ${MAKE_FILE} depend
	
do-install: 
	@for file in ${WRKSRC}/obj/crypto-patent/libcrypto* ${WRKSRC}/obj/ssl-patent/libssl*; do \
		${INSTALL} $$file ${PREFIX}; \
	done; \

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
