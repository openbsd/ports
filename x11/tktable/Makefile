# $OpenBSD: Makefile,v 1.14 2004/11/24 02:35:26 kevlo Exp $

COMMENT=	"tk extension"

DISTNAME=	Tktable2.9
PKGNAME=	Tktable-2.9
CATEGORIES=	x11

HOMEPAGE= 	http://tktable.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tktable/}

BUILD_DEPENDS=	::x11/tk/8.4

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-tcl=${PREFIX}/lib/tcl8.4 \
		--with-tk=${PREFIX}/lib/tk8.4 \
		--with-tclinclude=${PREFIX}/include/tcl8.4 \
		--with-tkinclude=${PREFIX}/include/tk8.4

MAKE_ENV=	DISPLAY="${DISPLAY}" XAUTHORITY="${XAUTHORITY}"
REGRESS_TARGET=	test
REGRESS_IS_INTERACTIVE=	Yes

pre-regress:
.for t in DISPLAY XAUTHORITY
.  if !defined($t)
	@echo "$t needs to be set to run regress"; exit 1
.  endif
.endfor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/Tktable
	@cp ${WRKSRC}/demos/* ${PREFIX}/share/examples/Tktable

.include <bsd.port.mk>
