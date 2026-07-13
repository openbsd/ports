COMMENT =	access OpenSSL X509 API from Perl

DISTNAME =	Crypt-OpenSSL-X509-2.1.3
CPAN_AUTHOR =	JONASBN

CATEGORIES =	security

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto perl ssl

MODULES =		cpan

BUILD_DEPENDS =		security/p5-Crypt-OpenSSL-Guess
RUN_DEPENDS =		converters/p5-Convert-ASN1>=0.33

MAKE_ENV =		TEST_POD=Yes

post-extract:
	# remove extensive drivel from AI, makes review hard
	cd ${WRKSRC} && rm patch-1.md patch-2.md docs/TODO.md \
	    crypt-openssl-x509-cve-fix.patch docs/code-review-2026-07-11.md \
	    issue.patch issue2.patch feedback-1.md feedback-2.md 680-review.md

.include <bsd.port.mk>
