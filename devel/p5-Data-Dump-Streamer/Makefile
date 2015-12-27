# $OpenBSD: Makefile,v 1.12 2015/12/27 10:16:37 benoit Exp $

SHARED_ONLY=		Yes

COMMENT=		accurately serialize a data structure as Perl code

DISTNAME =		Data-Dump-Streamer-2.39
CATEGORIES=		devel

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS =		devel/p5-ExtUtils-Depends

RUN_DEPENDS=		converters/p5-JSON-XS \
			devel/p5-Algorithm-Diff \
			devel/p5-B-Utils \
			devel/p5-PadWalker

# prevent My::Builder from asking to setup a shortcut
pre-configure:
	echo "NODDS" > ${WRKSRC}/.answer

.include <bsd.port.mk>
