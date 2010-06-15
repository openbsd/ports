# $OpenBSD: Makefile,v 1.1.1.1 2010/06/15 13:11:25 pea Exp $

# pinentry builds against it's own stripped version of libassuan
# I will see with upstream how to change this behavior

COMMENT = 	collection of simple PIN or passphrase entry dialogs

DISTNAME = 	pinentry-0.8.0
CATEGORIES = 	security

MASTER_SITES = 	ftp://ftp.gnupg.org/gcrypt/pinentry/

HOMEPAGE = 	http://www.gnupg.org/related_software/pinentry/index.en.html

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP = 	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP = 	Yes

WANTLIB = 		c ncurses

MODULES = 		converters/libiconv

CONFIGURE_STYLE = 	gnu
CONFIGURE_ENV = 	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"	
CONFIGURE_ARGS = 	--enable-pinentry-curses \
			--disable-pinentry-qt \
			--disable-pinentry-qt4 \
			--disable-pinentry-gtk \
			--disable-pinentry-gtk2 

.include <bsd.port.mk>
