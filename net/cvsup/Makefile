# $OpenBSD: Makefile,v 1.12 2003/03/29 00:33:47 naddy Exp $

ONLY_FOR_ARCHS=	i386
COMMENT=	"network file distribution system"
COMMENT-server=	"network file distribution server"

VERSION=	16.1g
DISTNAME=	cvsup-snap-${VERSION}
PKGNAME=	cvsup-${VERSION}
PKGNAME-server=	cvsupd-${VERSION}
CATEGORIES=	net devel
HOMEPAGE=	http://www.polstra.com/projects/freeware/CVSup/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES= 	ftp://ftp.FreeBSD.org/pub/FreeBSD/ \
		ftp://ftp.se.FreeBSD.org/pub/FreeBSD/ \
		ftp://ftp.jp.FreeBSD.org/pub/FreeBSD/ \
		ftp://ftp.uk.FreeBSD.org/pub/FreeBSD/ \
		ftp://ftp.ru.FreeBSD.org/pub/FreeBSD/ \
		ftp://ftp.nectec.or.th/pub/FreeBSD/ \
		ftp://ftp.dnsbalance.ring.gr.jp/pub/FreeBSD/
MASTER_SITES:=	${MASTER_SITES:=development/CVSup/snapshots/}

MULTI_PACKAGES=	-server

BUILD_DEPENDS=	::lang/ezm3

FLAVORS=	no_x11
FLAVOR?=

M3FLAGS=	 -DPREFIX=${PREFIX} -DX11BASE=${X11BASE}

.if ${FLAVOR:L:Mno_x11}
M3FLAGS+=	-DNOGUI
.else
USE_X11=	Yes
.endif

MAKE_FLAGS=	M3FLAGS="${M3FLAGS}"
FAKE_FLAGS=	PREFIX=${WRKINST}${TRUEPREFIX}

NO_REGRESS=	Yes

.include <bsd.port.mk>
