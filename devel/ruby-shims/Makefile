# $OpenBSD: Makefile,v 1.3 2020/04/19 22:31:30 kn Exp $

COMMENT=	Ruby version redirection shim

DISTNAME=	ruby-shims-2
CATEGORIES=	devel
REVISION=	0

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
