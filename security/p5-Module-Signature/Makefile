# $OpenBSD: Makefile,v 1.31 2020/08/21 14:49:51 bluhm Exp $

COMMENT =	module signature file manipulation

DISTNAME =	Module-Signature-0.87

CATEGORIES =	security

MAINTAINER =	Alexander Bluhm <bluhm@openbsd.org>

# CC0 1.0 Universal License, Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
BUILD_DEPENDS =		security/gnupg
RUN_DEPENDS =		textproc/p5-Text-Diff \
			security/gnupg
TEST_DEPENDS =		devel/p5-IPC-Run

CONFIGURE_STYLE =	modinst

PKG_ARCH =		*

# Enable signature check by the module itself during make regress.
# Thus the regression test only works on an unpatched port as it
# verifies the signatures of the files in wrkdist directory.  The
# public keys for that are added to the key ring during make configure.
# This does not provide additional security as the keys are shipped
# together with the source.  It just ensures that the port works fine.
GNUPGHOME =		${WRKDIR}/gnupg
CONFIGURE_ENV =		GNUPGHOME=${GNUPGHOME}
MAKE_ENV =		GNUPGHOME=${GNUPGHOME} TEST_SIGNATURE=1

pre-configure:
	mkdir -p -m 0700 -- ${GNUPGHOME}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/p5-Module-Signature
.for f in *.pub
	${INSTALL_DATA} ${WRKDIST}/${f} ${PREFIX}/share/p5-Module-Signature
.endfor

.include <bsd.port.mk>
