# $OpenBSD: Makefile,v 1.1.1.1 2001/07/01 07:31:29 shell Exp $

COMMENT=		"perl modules for Gtk libraries"

VERSION=		0.7008
DISTNAME=		Gtk-Perl-${VERSION}
PKGNAME=		p5-Gtk-${VERSION}

CATEGORIES=     	x11 devel perl5
NEED_VERSION=		1.417

HOMEPAGE=		http://www.gtkperl.org/

MAINTAINER=		Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Gtk

PERL_MODULES=		${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=		${PERL_MODULES}/${MACHINE_ARCH}-openbsd/XML/Parser.pm::textproc/p5-XML-Parser \
			${PERL_MODULES}/XML/Writer.pm::textproc/p5-XML-Writer
LIB_DEPENDS=		gtk.1.::x11/gtk+

USE_X11=		Yes
CONFIGURE_STYLE=	perl
CONFIGURE_ARGS+=	--with-gtk  \
			--without-guessing

.include <bsd.port.mk>
