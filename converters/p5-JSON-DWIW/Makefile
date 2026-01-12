COMMENT =	JSON converter that Does What I Want

MODULES =	cpan
DISTNAME =	JSON-DWIW-0.47
CATEGORIES =	converters
REVISION =	1

# Perl
PERMIT_PACKAGE =		Yes
MAKE_ENV +=	CC='${CC}'

WANTLIB += c perl

MODULES +=	gnu

# dirty fix to populate autoconf cache; if this is not done we miss
# protection done by gnu.port.mk for configure detecting gmkdir, etc
CONFIGURE_SCRIPT= /usr/bin/true
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/libjsonevt

TEST_TARGET =	test

pre-configure:
	${MODGNU_configure}

.include <bsd.port.mk>
