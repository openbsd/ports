# $OpenBSD: Makefile,v 1.19 2002/05/15 17:58:49 espie Exp $

COMMENT=	"English PK fonts (300dpi) for ghostscript, xdvi, etc."

DISTNAME=	pkfonts
VERSION=	1.0
PKGNAME=	pkfonts-dpi300-${VERSION}
CATEGORIES=	print
NEED_VERSION=	1.515

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

S= FreeBSD-jp/ports-jp/LOCAL_PORTS/pkfonts
MASTER_SITES=   ftp://ports.jp.FreeBSD.org/pub/$S/ \
                ftp://ftp4.jp.FreeBSD.org/pub/$S/ \
                ftp://ftp.ics.es.osaka-u.ac.jp/pub/mirrors/$S/
EXTRACT_ONLY=	
DIST_SUBDIR=	pkfonts-${VERSION}

MULTI_PACKAGES=	-dpi118 -dpi240 -dpi360 -dpi400 -dpi600
SUBPACKAGE?=	

DISTFILES=	pk300.tar.gz

.for dpi in ${MULTI_PACKAGES:S/-dpi//} 
DISTFILES+=  		pk${dpi}.tar.gz
PKGNAME-dpi${dpi}=	pkfonts-dpi${dpi}-${VERSION}
COMMENT-dpi${dpi}=	${COMMENT:S/300dpi/${dpi}dpi/}
.endfor

NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/fonts
.for tarball in ${DISTFILES}
	tar -xzf ${FULLDISTDIR}/${tarball} -C ${PREFIX}/lib/fonts
.endfor

.include <bsd.port.mk>
