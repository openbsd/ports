# $OpenBSD: Makefile,v 1.1.1.1 2019/09/06 17:02:02 jcs Exp $

COMMENT=	Ruby version redirection shim

DISTNAME=	ruby-shims-1
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
	${INSTALL_SCRIPT} ${FILESDIR}/rubyshim.sh ${PREFIX}/bin/_rubyshim
.	for p in ${BINS}
		cd ${PREFIX}/bin && ln -sf _rubyshim ${p}
.	endfor

.include <bsd.port.mk>
