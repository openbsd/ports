# $OpenBSD: Makefile,v 1.3 2019/07/14 02:16:51 naddy Exp $

COMMENT-main=	English PK fonts (300dpi) for ghostscript, xdvi, etc.

DISTNAME=	pkfonts
VERSION=	1.0
PKGNAME=	pkfonts-dpi300-${VERSION}
REVISION =	1
PKGNAME-main=	pkfonts-dpi300-${VERSION}
REVISION-main =	1
CATEGORIES=	fonts print

PERMIT_PACKAGE=		no license
PERMIT_DISTFILES=	no license

S= FreeBSD-jp/ports-jp/LOCAL_PORTS/pkfonts
MASTER_SITES=   ftp://ports.jp.FreeBSD.org/pub/$S/ \
                ftp://ftp4.jp.FreeBSD.org/pub/$S/ \
                ftp://ftp.ics.es.osaka-u.ac.jp/pub/mirrors/$S/
EXTRACT_ONLY=	
DIST_SUBDIR=	pkfonts-${VERSION}

MULTI_PACKAGES=	-main -dpi118 -dpi240 -dpi360 -dpi400 -dpi600

DISTFILES=	pk300.tar.gz

.for dpi in ${MULTI_PACKAGES:M-dpi*:S/-dpi//} 
DISTFILES+=  		pk${dpi}.tar.gz
PKGNAME-dpi${dpi}=	pkfonts-dpi${dpi}-${VERSION}
COMMENT-dpi${dpi}=	${COMMENT-main:S/300dpi/${dpi}dpi/}
.endfor

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/fonts
.for tarball in ${DISTFILES}
	tar -xzf ${FULLDISTDIR}/${tarball} -C ${PREFIX}/lib/fonts
.endfor

.include <bsd.port.mk>
