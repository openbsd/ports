# $OpenBSD: Makefile,v 1.13 2011/03/08 20:12:15 landry Exp $

BROKEN-sparc64 =	fails a lot of regression tests

COMMENT=	virtual machine designed for interpreted languages

V=		3.0.0
DISTNAME=	parrot-$V
CATEGORIES=	lang perl6
SHARED_LIBS=	parrot	1.0

HOMEPAGE=	http://www.parrot.org/

MASTER_SITES=	ftp://ftp.parrot.org/pub/parrot/releases/stable/$V/

# Artistic2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m ncurses pthread readline stdc++ util z
WANTLIB += icudata icuuc icui18n

LIB_DEPENDS=		textproc/icu4c
REGRESS_DEPENDS=	devel/p5-Test-Pod

CONFIGURE_SCRIPT=	/usr/bin/perl Configure.pl
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--parrot_is_shared 
CONFIGURE_ARGS+=	--icuheaders=${LOCALBASE}/include
CONFIGURE_ARGS+=	--icushared="`${LOCALBASE}/bin/icu-config --ldflags`"
# There's a nasty bug in sleep() when compiled with threads, which uses
# pthread_cond_timedwait(3). Without threads, it maps to an ordinary sleep(3)
# call. Exposed by rakudo tests.
CONFIGURE_ARGS +=	--without-threads
CONFIGURE_ENV =		LIBparrot_VERSION=${LIBparrot_VERSION}

MAKE_ENV=		LIBparrot_VERSION=${LIBparrot_VERSION}

ALL_TARGET=		installable docs
INSTALL_TARGET =	install install-doc
REGRESS_TARGET=		test

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config/init/hints/openbsd.pm
post-install:
	${INSTALL_DATA} ${WRKSRC}/blib/lib/libparrot.so.${LIBparrot_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
