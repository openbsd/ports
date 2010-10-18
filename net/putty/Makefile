# $OpenBSD: Makefile,v 1.6 2010/10/18 18:36:57 espie Exp $

COMMENT-main=	SSH and telnet client
COMMENT-gui=	PuTTY GUI clients

DISTNAME=       putty-0.60
PKGNAME-main=	${DISTNAME}
REVISION-main=	0
PKGNAME-gui=	${DISTNAME:S/putty/putty-gui/}
REVISION-gui=	1
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
USE_GROFF =	Yes

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
