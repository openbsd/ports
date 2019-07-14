# $OpenBSD: Makefile,v 1.26 2019/07/14 02:16:52 naddy Exp $

COMMENT=	all W3C-published SGML DTDs for HTML

DISTNAME=	html-4.01
CATEGORIES=	textproc

# License: NONE
PERMIT_PACKAGE=		no license
PERMIT_DISTFILES=	no license

MASTER_SITES=	${MASTER_SITE_FREEBSD_LOCAL:=kuriyama/}
EXTRACT_ONLY=	# empty
NO_BUILD=       Yes
NO_TEST=	Yes
PKG_ARCH=	*
WRKDIST=	${WRKDIR}

INSTDIR=	${PREFIX}/share/sgml/html

pre-install:
	${INSTALL_DATA_DIR} ${INSTDIR}

do-install:
	@zcat ${FULLDISTDIR}/${DISTFILES} |(cd ${INSTDIR}; pax -r)
	@chmod ${SHAREMODE} `find ${INSTDIR} -type f`
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
