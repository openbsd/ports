# $OpenBSD: Makefile,v 1.21 2002/12/29 20:31:39 fgsch Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	'sensible unix password cracker'

DISTNAME=	crack5.0
PKGNAME=	crack-5.0
CATEGORIES=	security

HOMEPAGE=	http://www.users.dircon.co.uk/~crypto/

MASTER_SITES=	ftp://ftp.cerias.purdue.edu/pub/tools/unix/pwdutils/crack/ \
		${MASTER_SITE_PACKETSTORM:=Crackers/crack/}

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
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
	(cd ${WRKSRC} ; CC="${CC}" CFLAGS="${CFLAGS}" ./Crack -makeonly)
	(cd ${WRKSRC} ; ./Crack -makedict)
.if !defined(USE_DES)
	@#(cd ${WRKSRC} ; ./Crack -fgnd -fmt bsd ${FILESDIR}/pw-md5.test)
.endif

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/crack
	@rm -f ${WRKSRC}/Run/*
	@(cd ${WRKSRC} ; tar cf - . | (cd ${PREFIX}/crack; tar xfBp -))


.include <bsd.port.mk>
