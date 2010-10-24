# $OpenBSD: Makefile,v 1.27 2010/10/24 12:49:39 jasper Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	sensible unix password cracker

DISTNAME=	crack5.0
PKGNAME=	crack-5.0
REVISION=	3
CATEGORIES=	security

HOMEPAGE=	http://www.crypticide.com/users/alecm/security/

MASTER_SITES=	${HOMEPAGE}/crack/ \
		${MASTER_SITE_PACKETSTORM:=Crackers/crack/}

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

WRKDIST=	${WRKDIR}/c50a

NO_REGRESS=	Yes

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

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/crack
	@rm -f ${WRKSRC}/Run/*
	@${INSTALL_SCRIPT} ${FILESDIR}/openbsd2spf ${WRKSRC}/scripts
	@(cd ${WRKSRC} ; tar cf - . | (cd ${PREFIX}/crack; tar xfBp -))
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD ${PREFIX}/crack/README.OpenBSD
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/crack
	@perl -pi -e "s,^make.*,# make removed for runtime," ${PREFIX}/crack/Crack

.include <bsd.port.mk>
