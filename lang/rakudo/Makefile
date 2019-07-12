# $OpenBSD: Makefile,v 1.34 2019/07/12 20:47:22 sthen Exp $

BROKEN-powerpc =	Cannot declare pseudo-package GLOBAL

COMMENT =		Rakudo Perl 6 compiler

V =			2018.12
DISTNAME =		rakudo-$V

NQP_VERSION =		2018.12

CATEGORIES =		lang perl6

HOMEPAGE =		http://rakudo.org

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Artistic 2
PERMIT_PACKAGE =	Yes

WANTLIB += atomic_ops ffi kvm m moar pthread uv

GH_ACCOUNT =		rakudo
GH_PROJECT =		rakudo
GH_TAGNAME =		$V
MASTER_SITES =		${MASTER_SITES_GITHUB}

BUILD_DEPENDS =	lang/nqp>=${NQP_VERSION} \
		math/libtommath
LIB_DEPENDS =	lang/moarvm
RUN_DEPENDS =	lang/nqp>=${NQP_VERSION}

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS +=	--prefix="${PREFIX}"

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tools/install-dist.p6 \
		${PREFIX}/bin/perl6-install-dist

.include <bsd.port.mk>
