# $OpenBSD: Makefile,v 1.1.1.1 2007/09/04 09:14:00 djm Exp $

COMMENT-main=	SSH and telnet client
COMMENT-gui=	PuTTY GUI clients

DISTNAME=       putty-0.60
PKGNAME-main=	${DISTNAME}
PKGNAME-gui=	${DISTNAME:S/putty/putty-gui/}
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
WANTLIB-gui=		c m X11 Xext Xi glib gmodule iconv intl
LIB_DEPENDS-gui=	gtk.>=1,gdk.>=1::x11/gtk+

pre-configure:
	cd ${WRKSRC} && ./mkfiles.pl

NO_REGRESS=	Yes

.include <bsd.port.mk>
