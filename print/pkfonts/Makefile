# OpenBSD makefile for: English PK fonts
# Date created:		May 17 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.16 2001/10/02 14:18:49 heko Exp $
#

COMMENT=	"English PK fonts, for ghostscript, xdvi and so on"

DISTNAME=	pkfonts
PKGNAME=	pkfonts-1.0
CATEGORIES=	print
NEED_VERSION=	1.465
DISTFILES=	pk${FLAVOR:S/dpi//}.tar.gz
EXTRACT_ONLY=	

MASTER_SITES=   ftp://ports.jp.FreeBSD.org/pub/%SUBDIR%/ \
                ftp://ftp4.jp.FreeBSD.org/pub/%SUBDIR%/ \
                ftp://ftp.ics.es.osaka-u.ac.jp/pub/mirrors/%SUBDIR%/
MASTER_SITE_SUBDIR=     FreeBSD-jp/ports-jp/LOCAL_PORTS/pkfonts

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# License: NONE
PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

DIST_SUBDIR=	pkfonts
NO_BUILD=	Yes

FLAVORS=	dpi118 dpi240 dpi300 dpi360 dpi400 dpi600
FLAVOR?=	dpi300

.for dpi in ${FLAVORS:S/dpi//}
SUPDISTFILES+=  pk${dpi}.tar.gz
.endfor    

.if empty(FLAVOR)
ERRORS+=	"Fatal: You must choose a flavor of: ${FLAVORS}"
.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/fonts
	tar -xzf ${FULLDISTDIR}/${DISTFILES} -C ${PREFIX}/lib/fonts

.include <bsd.port.mk>
