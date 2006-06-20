# $OpenBSD: Makefile,v 1.25 2006/06/20 12:59:12 jasper Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	'sensible unix password cracker'

DISTNAME=	crack5.0
PKGNAME=	crack-5.0p2
CATEGORIES=	security

HOMEPAGE=	http://www.crypticide.com/users/alecm/security/

MASTER_SITES=	ftp://ftp.cerias.purdue.edu/pub/tools/unix/pwdutils/crack/ \
		${MASTER_SITE_PACKETSTORM:=Crackers/crack/}

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

WRKDIST=	${WRKDIR}/c50a

pre-configure:
.if !defined(USE_DES)
	@/bin/mv -f ${WRKSRC}/src/libdes ${WRKSRC}/src/libdes.notused
	@/bin/mv -f ${WRKSRC}/src/util/elcid.c ${WRKSRC}/src/util/elcid.c.orig
	@cp -p ${WRKSRC}/src/util/elcid.c,bsd ${WRKSRC}/src/util/elcid.c
.endif

pre-build:
	@(if [ ! -f /usr/share/dict/words ];then \
		echo "You may want to install the miscXX.tgz fileset" ; \
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
	@${INSTALL_SCRIPT} ${FILESDIR}/openbsd2spf ${WRKSRC}/scripts
	@(cd ${WRKSRC} ; tar cf - . | (cd ${PREFIX}/crack; tar xfBp -))
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/crack
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/crack
	@perl -pi -e "s,%%TRUEPREFIX%%,${TRUEPREFIX}," ${PREFIX}/crack/README.OpenBSD
	@perl -pi -e "s,^make.*,# make removed for runtime," ${PREFIX}/crack/Crack

.include <bsd.port.mk>
