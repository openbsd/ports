# $OpenBSD: Makefile,v 1.18 2002/05/14 12:07:09 naddy Exp $

COMMENT=	"all W3C-published SGML DTDs for HTML"

DISTNAME=	html-4.01
CATEGORIES=	textproc
NEED_VERSION=	1.515

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# License: NONE
PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

MASTER_SITES=	${MASTER_SITE_FREEBSD_LOCAL:=kuriyama/}
EXTRACT_ONLY=	# empty
NO_BUILD=       Yes
WRKDIST=	${WRKDIR}

INSTDIR=	${PREFIX}/share/sgml/html

pre-install:
	${INSTALL_DATA_DIR} ${INSTDIR}

do-install:
	@zcat ${FULLDISTDIR}/${DISTFILES} |(cd ${INSTDIR}; pax -r)
	@chmod ${SHAREMODE} `find ${INSTDIR} -type f`
	@/usr/sbin/chown -R ${SHAREOWN}.${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
