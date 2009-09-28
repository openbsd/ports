# $OpenBSD: Makefile,v 1.26 2009/09/28 13:09:15 sthen Exp $ 

COMMENT=	web based calendar application using the horde framework

HORDE_MODULE=	kronolith
HORDE_NAME=	Kronolith

DISTNAME=	${HORDE_MODULE}-h3-2.3.2
CATEGORIES=	www mail
HOMEPAGE=	http://www.horde.org/${HORDE_MODULE}/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_HORDE:=kronolith/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/horde
SUBST_VARS=	INSTDIR HORDE_NAME HORDE_MODULE

RUN_DEPENDS=	:horde->=3.0:devel/horde \
		:pear-Date-*:devel/pear-Date \
		:imp-h3-*:mail/imp

pre-fake:
	${INSTALL_DATA_DIR} ${INSTDIR}

do-install:
	mv ${WRKDIST} ${INSTDIR}/${HORDE_MODULE}
	chown -R ${BINOWN}:daemon ${INSTDIR}/${HORDE_MODULE}
	chown -R ${BINOWN}:www ${INSTDIR}/${HORDE_MODULE}/config
	find ${INSTDIR}/${HORDE_MODULE} -name \*.orig -exec rm {} \;

.include <bsd.port.mk>
