# $OpenBSD: Makefile,v 1.5 2003/05/07 11:31:07 naddy Exp $

COMMENT=		"enhanced, MIME capable Berkeley Mail"

DISTNAME=		nail-10.5
CATEGORIES=		mail
HOMEPAGE=		http://omnibus.ruf.uni-freiburg.de/~gritter/

MAINTAINER=		Jeffrey Neitzel <jneitzel@bluemarble.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://omnibus.ruf.uni-freiburg.de/~gritter/archive/nail/ \
		http://home.bluemarble.net/~jneitzel/nail/

MODULES=		iconv

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--with-rcfile="${SYSCONFDIR}/nail.rc" --with-openssl
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-liconv"

post-extract:
	@cd ${WRKSRC}; touch -r configure.in configure.in.stamp

post-configure:
	@cd ${WRKSRC}; touch -r configure.in.stamp configure.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nail
	${INSTALL_DATA} ${WRKSRC}/nail.rc ${PREFIX}/share/examples/nail/

.include <bsd.port.mk>
