COMMENT=		"Ruby extension library for GTK Toolkit"

VERSION=		0.26
DISTNAME=		ruby-gtk-${VERSION}
CATEGORIES=		x11
NEED_VERSION=		1.504

HOMEPAGE=		http://ruby-gnome.sourceforge.net

MAINTAINER=		Damien COUDERC <couderc.damien@wanadoo.fr>

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
CONFIGURE_SCRIPT=	${PREFIX}/bin/ruby extconf.rb

.include <bsd.port.mk>
