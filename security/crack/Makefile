# $OpenBSD: Makefile,v 1.8 2000/03/24 22:11:57 espie Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	crack5.0
PKGNAME=	crack-5.0
CATEGORIES=	security
NEED_VERSION=	1.191
NO_CDROM=	"CRYPTO: Third party crypto not allowed."

MASTER_SITES=	ftp://ftp.ox.ac.uk/pub/comp/security/software/crackers/  \
		ftp://ftp.auscert.org.au/pub/coast/mirrors/cert.org/tools/crack/ \

MAINTAINER=     ports@OpenBSD.ORG

# This port contains crypto
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/c50a

pre-configure:
.if !defined(USE_DES)
	@/bin/mv -f ${WRKSRC}/src/libdes ${WRKSRC}/src/libdes.notused
	@/bin/mv -f ${WRKSRC}/src/util/elcid.c ${WRKSRC}/src/util/elcid.c.orig
	@cp -p ${WRKSRC}/src/util/elcid.c,bsd ${WRKSRC}/src/util/elcid.c
.endif

pre-build:
	@(if [ ! -f /usr/share/dict/words ];then \
		echo "You may want to install the dict distribution into /usr/share/dict" ; \
		echo "to increase the size of the cracking dictionary." ; \
	fi)

do-build:
	(cd ${WRKSRC} ; ./Crack -makeonly)
	(cd ${WRKSRC} ; ./Crack -makedict)
.if !defined(USE_DES)
	@#(cd ${WRKSRC} ; ./Crack -fgnd -fmt bsd ${FILESDIR}/pw-md5.test)
.endif

do-install:
	@mkdir -p ${PREFIX}/crack
	@rm -f ${WRKSRC}/Run/*
	@(cd ${WRKSRC} ; tar cf - . | (cd ${PREFIX}/crack; tar xfBp -))


.include <bsd.port.mk>
