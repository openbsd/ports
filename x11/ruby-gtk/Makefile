# $OpenBSD: Makefile,v 1.2 2002/02/28 19:30:14 couderc Exp $

COMMENT=		"Ruby extension library for GTK Toolkit"

VERSION=		0.26
DISTNAME=		ruby-gtk-${VERSION}
CATEGORIES=		x11
NEED_VERSION=		1.504

HOMEPAGE=		http://ruby-gnome.sourceforge.net

MAINTAINER=		Damien COUDERC <couderc@openbsd.org>

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	OPSYS_VER

MASTER_SITES=           ${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	ruby-gnome

RUN_DEPENDS=		ruby.1.66::lang/ruby
LIB_DEPENDS=		gtk.12::x11/gtk+ \
			ruby.1.66::lang/ruby

NO_REGRESS=	Yes

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	${LOCALBASE}/bin/ruby extconf.rb

.include <bsd.port.mk>
