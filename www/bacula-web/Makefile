# $OpenBSD: Makefile,v 1.11 2013/08/12 04:11:21 robert Exp $

COMMENT=	monitoring and reporting tool for bacula(8)

DISTNAME=	bacula-web-5.2.13-1
PKGNAME=	bacula-web-5.2.13.1
REVISION=	1

CATEGORIES=	www sysutils

HOMEPAGE=	http://www.bacula-web.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}tl_files/downloads/

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
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
	rm ${PREFIX}/bacula-web/application/config/config.php.sample.orig \
		${PREFIX}/bacula-web/.gitignore
	${SUBST_CMD} -c ${FILESDIR}/bacula-web.conf \
		${INSTDIR}/bacula-web.conf.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
