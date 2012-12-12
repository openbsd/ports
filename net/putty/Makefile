# $OpenBSD: Makefile,v 1.12 2012/12/12 16:38:33 naddy Exp $

COMMENT-main=	SSH and telnet client
COMMENT-gui=	PuTTY GUI clients

DISTNAME=	putty-0.60
PKGNAME-main=	${DISTNAME}
REVISION-main=	2
PKGNAME-gui=	${DISTNAME:S/putty/putty-gui/}
REVISION-gui=	4
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

CONFIGURE_STYLE=	autoconf automake
AUTOCONF_VERSION=	2.61
AUTOMAKE_VERSION=	1.11
WRKSRC=			${WRKDIST}/unix
USE_GROFF =		Yes

MULTI_PACKAGES= 	-main -gui

MODULES=		devel/gettext

WANTLIB-main=		c
WANTLIB-gui=		X11 Xext Xi c glib gmodule m ${MODGETTEXT_WANTLIB} \
			pthread-stubs xcb gtk>=1 gdk>=1

LIB_DEPENDS-main=	# empty
LIB_DEPENDS-gui=	x11/gtk+

AUTO_ENV=		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

post-patch:
	@echo "Running aclocal-${AUTOMAKE_VERSION} in ${WRKSRC}"
	@cd ${WRKSRC} && ${SETENV} ${AUTO_ENV} aclocal

pre-configure:
	cd ${WRKDIST} && ./mkfiles.pl

NO_REGRESS=	Yes

.include <bsd.port.mk>
