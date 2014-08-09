# $OpenBSD: Makefile,v 1.25 2014/08/09 21:35:09 espie Exp $

COMMENT=	all W3C-published SGML DTDs for HTML

DISTNAME=	html-4.01
CATEGORIES=	textproc

# License: NONE
PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license

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
