# $OpenBSD: Makefile,v 1.12 2003/10/08 17:13:18 sturm Exp $

COMMENT=	"tk extension"

DISTNAME=	Tktable2.8
PKGNAME=	Tktable-2.8
CATEGORIES=	x11

HOMEPAGE= 	http://tktable.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tktable/}

BUILD_DEPENDS=	::x11/tk/8.3

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-tcl=${PREFIX}/lib/tcl8.3 \
		--with-tk=${PREFIX}/lib/tk8.3 \
		--with-tclinclude=${PREFIX}/include/tcl8.3 \
		--with-tkinclude=${PREFIX}/include/tk8.3

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
