# $OpenBSD: Makefile,v 1.1.1.1 2001/05/05 22:15:17 espie Exp $

ONLY_FOR_ARCHS=	i386
COMMENT=	"network file distribution system"
COMMENT-server=	"network file distribution server"
V=16.1
DISTNAME=	cvsup-$V
CATEGORIES=	net devel
NEED_VERSION=	1.405
MASTER_SITES=	ftp://ftp.freebsd.org/pub/FreeBSD/development/CVSup/sources/ \
		ftp://ftp.cs.tu-berlin.de/pub/FreeBSD/development/CVSup/sources/

PKGNAME-server=cvsupd-$V

PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_CDROM=Yes

MULTI_PACKAGES=-server

FLAVORS=no_x11 static
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
M3FLAGS+=	-DNOGUI
.endif
.if ${FLAVOR:L:Mstatic}
M3FLAGS+=	-DSTATIC
.else
# XXX this is a false depend, but we can't depend on lib in a weird path now
RUN_DEPENDS=m3build::lang/pm3
.endif

BUILD_DEPENDS=m3build::lang/pm3

MAKE_FLAGS=M3FLAGS=${M3FLAGS}
FAKE_FLAGS=PREFIX=${WRKINST}${TRUEPREFIX}

HOMEPAGE=	http://www.polstra.com/projects/freeware/CVSup/

.include <bsd.port.mk>

PORTPATH:=${LOCALBASE}/pm3/bin:${PORTPATH}
