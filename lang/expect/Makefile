# $OpenBSD: Makefile,v 1.37 2002/12/15 00:22:03 brad Exp $

COMMENT=	"sophisticated scripter based on Tcl/Tk"

DISTNAME=	expect-5.38.0
CATEGORIES=	lang
MASTER_SITES=	http://expect.nist.gov/old/

HOMEPAGE=	http://expect.nist.gov/

LIB_DEPENDS+=	tcl83.1::lang/tcl/8.3

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	no_tk
FLAVOR?=

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--with-tclconfig="${LOCALBASE}/lib/tcl8.3" \
		--with-tclinclude="${LOCALBASE}/include/tcl8.3"

.if !${FLAVOR:L:Mno_tk}
LIB_DEPENDS+=	tk83.1.3::x11/tk/8.3
CONFIGURE_ARGS+=--with-tkconfig="${LOCALBASE}/lib/tk8.3" \
		--with-tkinclude="${LOCALBASE}/include/tk8.3"
.endif

REGRESS_TARGET=	test

DESTDIRNAME=	INSTALL_ROOT

WRKDIST=	${WRKDIR}/expect-5.38

# make sure configure is newer than Makefile.in, since we patch Makefile.in
# as well.
post-patch:
	@touch ${WRKSRC}/configure

.include <bsd.port.mk>
