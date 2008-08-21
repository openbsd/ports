# $OpenBSD: Makefile,v 1.26 2008/08/21 13:52:30 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	set of modules to use Gtk+ libraries from Perl

VERSION=	0.7008
DISTNAME=	Gtk-Perl-${VERSION}
PKGNAME=	p5-Gtk-${VERSION}p0

CATEGORIES=	x11 devel perl5

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi gdk glib gmodule iconv intl jpeg m png \
			tiff ungif z 

HOMEPAGE=	http://www.gtkperl.org/

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Gtk/}

USE_X11=	Yes

LIB_DEPENDS=	gtk.>=1.2::x11/gtk+ \
		gdk_pixbuf.>=2::graphics/gdk-pixbuf \
		gdk_imlib.>=19::graphics/imlib
RUN_DEPENDS=	:p5-XML-Parser-*:textproc/p5-XML-Parser \
		:p5-XML-Writer-*:textproc/p5-XML-Writer
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	--without-gtkhtml --without-gtkxmhtml \
		--without-gnomeprint --without-applets \
		--without-glade --without-gnome
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MAKE_FLAGS=	INST_MAN3DIR="../blib/man3p"

PERLDIR=	"${DESTDIR}/${PREFIX}/libdata/perl5/site_perl"
DESTDIRNAME=	none
FAKE_FLAGS=	INSTALLPRIVLIB="${PERLDIR}" \
		INSTALLARCHLIB="${PERLDIR}/${MACHINE_ARCH}-openbsd" \
		INSTALLSITELIB="${PERLDIR}" \
		INSTALLSITEARCH="${PERLDIR}/${MACHINE_ARCH}-openbsd" \
		INSTALLMAN3DIR="${DESTDIR}/${PREFIX}/man/man3p" \
		INSTALLSITEMAN3DIR="${DESTDIR}/${PREFIX}/man/man3p"

FLAVORS=	gtkglarea
FLAVOR?=	

.if ${FLAVOR:L:Mgtkglarea}
LIB_DEPENDS+=	gtkgl.>=1.2::x11/gtkglarea
CONFIGURE_ARGS+= --with-gtkglarea-force
.else
CONFIGURE_ARGS+= --without-gtkglarea
.endif

.include <bsd.port.mk>
