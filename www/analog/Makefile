# $OpenBSD: Makefile,v 1.16 2000/04/01 17:23:54 form Exp $

DISTNAME=	analog-4.1
CATEGORIES=	www
MASTER_SITES=	http://www.statslab.cam.ac.uk/~sret1/analog/ \
		http://www.magma.ca/~brendanr/analog/ \
		http://brendanr.simplenet.com/analog/ \
		http://analog.gsp.com/ \
		http://www.reverse.net/analog/ \
		http://www.rge.com/pub/infosystems/statistics/analog/ \
		http://blip.cetlink.net/analog/ \
		http://analog.technomancer.com/ \
		http://analog.wizard.net/ \
		ftp://ftp.netcasting.net/pub/packages/analog/

MAINTAINER=	form@OpenBSD.ORG

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes

ETCDIR=		/etc
ANALOGDIR=	${PREFIX}/lib/analog
CONFIGFILE=	${ETCDIR}/analog.cfg
DOCDIR=		${PREFIX}/share/doc/analog
HTTPDIR=	/var/www
IMAGEDIR=	/analog-images

CFLAGS+=	-DANALOGDIR=\\\"${ANALOGDIR}/\\\" \
		-DDEFAULTCONFIGFILE=\\\"${CONFIGFILE}\\\" \
		-DHTTPDIR=\\\"${HTTPDIR}/\\\" \
		-DIMAGEDIR=\\\"${IMAGEDIR}/\\\" \
		-DANALOG=\\\"${PREFIX}/bin/analog\\\"

post-patch:
	@mv ${WRKSRC}/anlgform.pl ${WRKSRC}/anlgform.pl.src
	@sed -e "s,@PREFIX@,${PREFIX},g" < ${WRKSRC}/anlgform.pl.src \
		> ${WRKSRC}/anlgform.pl

do-install:
	@${INSTALL_DATA_DIR} ${DOCDIR}
	@${INSTALL_DATA_DIR} ${ANALOGDIR}/lang
	@${INSTALL_DATA_DIR} ${ANALOGDIR}/images
	@${INSTALL_DATA_DIR} ${HTTPDIR}/htdocs${IMAGEDIR}
	${INSTALL_PROGRAM} ${WRKSRC}/analog ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/docs/* ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/images/* ${ANALOGDIR}/images
	${INSTALL_DATA} ${WRKSRC}/lang/* ${ANALOGDIR}/lang
	${INSTALL_DATA} ${WRKSRC}/analog.cfg ${ANALOGDIR}
	${INSTALL_DATA} ${WRKSRC}/anlgform.html ${ANALOGDIR}
	${INSTALL_DATA} ${WRKSRC}/anlgform.pl ${ANALOGDIR}

.include <bsd.port.mk>
