# $OpenBSD: Makefile,v 1.10 2002/10/29 17:50:08 naddy Exp $

COMMENT=	"tk extension"

DISTNAME=	Tktable2.7
PKGNAME=	Tktable-2.7
CATEGORIES=	x11

HOMEPAGE= 	http://tktable.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tktable/}

BUILD_DEPENDS=	::x11/tk/8.3

WRKDIST=	${WRKDIR}/${DISTNAME}/unix

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--with-tcl=${PREFIX}/lib/tcl8.3 \
		--with-tk=${PREFIX}/lib/tk8.3

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Tktable
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/Tktable
	${INSTALL_DATA} ${WRKSRC}/../doc/tkTable.html ${PREFIX}/share/doc/Tktable
	@cp ${WRKSRC}/../demos/* ${PREFIX}/share/examples/Tktable

.include <bsd.port.mk>
