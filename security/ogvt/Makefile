# $OpenBSD: Makefile,v 1.8 2022/01/19 12:49:20 abieber Exp $

COMMENT =		simple tool for verifying gpg signatures

MODGO_MODNAME =		suah.dev/ogvt
MODGO_VERSION =		v1.2.0

DISTNAME =		 ogvt-${MODGO_VERSION}

CATEGORIES =		security

HOMEPAGE =		https://git.sr.ht/~qbit/ogvt

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>
# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c pthread

MODULES =	lang/go

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/${MODGO_BINDIR} && \
		${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/* \
			 ${PREFIX}/${MODGO_BINDIR};
	${INSTALL_MAN} ${WRKSRC}/ogvt.1 ${PREFIX}/man/man1/

MODGO_MODULES = \
	github.com/!proton!mail/go-crypto        v0.0.0-20211221144345-a4f6767435ab \
	golang.org/x/crypto                      v0.0.0-20210322153248-0c34fe9e7dc2 \
	golang.org/x/net                         v0.0.0-20210226172049-e18ecbb05110 \
	golang.org/x/sys                         v0.0.0-20210917161153-d61c044b1678 \
	golang.org/x/term                        v0.0.0-20201126162022-7de9c90e9dd1 \
	golang.org/x/text                        v0.3.3 \
	golang.org/x/tools                       v0.0.0-20180917221912-90fa682c2a6e \
	suah.dev/protect                         v1.2.0

MODGO_MODFILES =        \
	golang.org/x/sys         v0.0.0-20201119102817-f84b799fce68

.include <bsd.port.mk>
