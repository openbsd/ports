# $OpenBSD: Makefile,v 1.5 2002/02/10 19:48:21 pvalchev Exp $

COMMENT=		"Advanced Intrusion Detection Environment"

V=			0.7
DISTNAME=		aide-${V}
CATEGORIES=		security
NEED_VERSION=		1.489

MAINTAINER=		David Lebel <lebel@openbsd.org>

BUILD_DEPENDS=		::devel/bison \
			::security/mhash

HOMEPAGE=		http://www.cs.tut.fi/~rammer/aide.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.cs.tut.fi/pub/src/gnu/ \
			http://www.cs.tut.fi/~rammer/ \

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-mhash
CONFIGURE_ENV=		YACC="bison -y" \
			CPPFLAGS="-I${LOCALBASE}/include/" \
			LDFLAGS="-L${LOCALBASE}/lib/"

# XXX workaround sparc64 gcc optimization bug
.if ${MACHINE_ARCH:Msparc64}
PATCH_LIST=     gcc-* patch-*
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/aide
	${INSTALL_DATA} ${WRKSRC}/doc/aide.conf ${PREFIX}/share/examples/aide

.include <bsd.port.mk>
