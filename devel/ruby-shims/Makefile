# $OpenBSD: Makefile,v 1.4 2020/04/23 19:00:17 kn Exp $

COMMENT=	Ruby version redirection shim

DISTNAME=	ruby-shims-3
CATEGORIES=	devel

MAINTAINER=	joshua stein <jcs@openbsd.org>

# ISC
PERMIT_PACKAGE=	Yes

DISTFILES=
NO_TEST=	Yes
NO_BUILD=	Yes

BINS=		ruby \
		erb \
		irb \
		rdoc \
		ri \
		rake \
		gem \
		bundle \
		bundler

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/rubyshim.sh ${PREFIX}/libexec/rubyshim
.	for p in ${BINS}
		ln -sf ${TRUEPREFIX}/libexec/rubyshim ${PREFIX}/bin/${p}
.	endfor

.include <bsd.port.mk>
