# $OpenBSD: Makefile,v 1.4 2010/07/12 22:07:41 sthen Exp $

COMMENT-main=	SSH and telnet client
COMMENT-gui=	PuTTY GUI clients

DISTNAME=       putty-0.60
PKGNAME-main=	${DISTNAME}
PKGNAME-gui=	${DISTNAME:S/putty/putty-gui/}
REVISION-gui=	0
CATEGORIES=	net security

HOMEPAGE=	http://www.chiark.greenend.org.uk/~sgtatham/putty/
MASTER_SITES=	http://the.earth.li/~sgtatham/putty/latest/ \
		ftp://ftp.chiark.greenend.org.uk/users/sgtatham/putty-latest/

MAINTAINER=	Damien Miller <djm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
WRKBUILD=		${WRKSRC}/unix

MULTI_PACKAGES= 	-main -gui

WANTLIB=		c
WANTLIB-gui=		X11 Xext Xi c glib gmodule iconv intl m \
			pthread-stubs xcb
LIB_DEPENDS-gui=	gtk.>=1,gdk.>=1::x11/gtk+

pre-configure:
	cd ${WRKSRC} && ./mkfiles.pl

NO_REGRESS=	Yes

.include <bsd.port.mk>

# gcc4 is smarter !
.if ${COMPILER_VERSION:L:Mgcc4*}
CFLAGS += -Wno-error=address
.endif
