# $OpenBSD: Makefile,v 1.30 2000/09/06 01:06:26 brad Exp $

DISTNAME=	expect-5.32.1
CATEGORIES=	lang
NEED_VERSION=	1.324
MASTER_SITES=	http://expect.nist.gov/old/

HOMEPAGE=	http://expect.nist.gov/

LIB_DEPENDS=	tk83.1.3:x11/tk/8.3

MAINTAINER=	niklas@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	INSTALL_ROOT="${WRKINST}"

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--with-tclconfig=${PREFIX}/lib/tcl8.3 \
		--with-tclinclude=${PREFIX}/include/tcl8.3 \
		--with-tkconfig=${PREFIX}/lib/tk8.3 \
		--with-tkinclude=${PREFIX}/include/tk8.3

WRKDIST=	${WRKDIR}/expect-5.32

post-extract:
	@cp -f ${FILESDIR}/config.guess ${WRKSRC}

# make sure configure is newer than Makefile.in, since we patch Makefile.in
# as well.
post-patch:
	@touch ${WRKSRC}/configure

test:	build
	@cd ${WRKBUILD}; ${MAKE} test

.include <bsd.port.mk>
