# $OpenBSD: Makefile,v 1.2 2001/05/06 19:39:44 naddy Exp $

ONLY_FOR_ARCHS=	i386
COMMENT=	"network file distribution system"
COMMENT-server=	"network file distribution server"

VERSION=	16.1a
DISTNAME=	cvsup-snap-${VERSION}
PKGNAME=	cvsup-${VERSION}
PKGNAME-server=	cvsupd-${VERSION}
CATEGORIES=	net devel
NEED_VERSION=	1.405
HOMEPAGE=	http://www.polstra.com/projects/freeware/CVSup/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES= \
	ftp://ftp3.freebsd.org/pub/FreeBSD/development/CVSup/snapshots/ \
	ftp://ftp.freebsd.org/pub/FreeBSD/development/CVSup/snapshots/ \
	ftp://ftp.cs.tu-berlin.de/pub/FreeBSD/development/CVSup/snapshots/

MULTI_PACKAGES=	-server

FLAVORS=	no_x11 static
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
M3FLAGS+=	-DNOGUI
.endif
.if ${FLAVOR:L:Mstatic}
M3FLAGS+=	-DSTATIC
.else
# XXX this is a false depend, but we can't depend on lib in a weird path now
RUN_DEPENDS=	m3build::lang/pm3
.endif

BUILD_DEPENDS=	m3build::lang/pm3

MAKE_FLAGS=	M3FLAGS="${M3FLAGS}"
FAKE_FLAGS=	PREFIX=${WRKINST}${TRUEPREFIX}

.include <bsd.port.mk>

PORTPATH:=	${LOCALBASE}/pm3/bin:${PORTPATH}
