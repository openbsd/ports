# $OpenBSD: Makefile,v 1.17 2011/10/19 13:30:59 ajacoutot Exp $

COMMENT=	virtual machine designed for interpreted languages

V=		3.6.0
DISTNAME=	parrot-$V
REVISION=	0
CATEGORIES=	lang perl6
SHARED_LIBS=	parrot	3.0

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

# XXX The default (gms) garbage collector has issues on powerpc. Until
# it's fixed, use the old one (ms2).
.if ${MACHINE_ARCH:Mpowerpc}
CONFIGURE_ARGS+=	--gc=ms2
.endif

CONFIGURE_ENV =		LIBparrot_VERSION=${LIBparrot_VERSION}

MAKE_ENV=		LIBparrot_VERSION=${LIBparrot_VERSION}

ALL_TARGET=		installable
INSTALL_TARGET =	install install-doc
REGRESS_TARGET=		test

SUBST_VARS +=		V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config/init/hints/openbsd.pm
post-install:
	${INSTALL_DATA} ${WRKSRC}/blib/lib/libparrot.so.${LIBparrot_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
