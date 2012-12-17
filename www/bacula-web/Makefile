# $OpenBSD: Makefile,v 1.3 2012/12/17 14:55:08 ajacoutot Exp $

COMMENT=	monitoring and reporting tool for bacula(8)

DISTNAME=	bacula-web-5.2.11

CATEGORIES=	www sysutils

HOMEPAGE=	http://www.bacula-web.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}tl_files/downloads/

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/bacula-web
TINSTDIR=	${TRUEPREFIX}/bacula-web
SUBST_VARS=	INSTDIR TINSTDIR

do-extract:
	mkdir ${WRKDIST}
	cd ${WRKDIST}; \
	for archive in ${EXTRACT_ONLY}; do \
		case $$archive in \
		${EXTRACT_CASES} \
		esac; \
	done

do-install:
	cp -Rp ${WRKSRC} ${INSTDIR}
	rm ${PREFIX}/bacula-web/application/config/config.php.sample.orig
	${SUBST_CMD} -c ${FILESDIR}/bacula-web.conf \
		${INSTDIR}/bacula-web.conf.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
