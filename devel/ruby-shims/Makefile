# $OpenBSD: Makefile,v 1.5 2020/05/14 21:08:01 jcs Exp $

COMMENT=	Ruby version redirection shim

DISTNAME=	ruby-shims-3
CATEGORIES=	devel
REVISION=	0

MAINTAINER=	joshua stein <jcs@jcs.org>

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
