COMMENT =	perl implementation of email authentication standards

V =		3.20240701
DISTNAME =	Mail-Milter-Authentication-${V}
CATEGORIES =	mail

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

SUBST_VARS =		VARBASE
pre-configure:
		${SUBST_CMD} ${WRKSRC}/bin/authentication_milter
		find ${WRKBUILD} -type f -name '*${PATCHORIG}' -delete

CONFIGURE_STYLE =	modinst

BUILD_DEPENDS =	devel/p5-File-ShareDir-Install

RUN_DEPENDS =	devel/p5-List-MoreUtils \
		converters/p5-JSON \
		mail/p5-Email-Address \
		mail/p5-Email-Date-Format \
		mail/p5-Mail-DMARC>=1.20150908 \
		mail/p5-Mail-SPF \
		sysutils/p5-Proc-ProcessTable

TEST_DEPENDS =	converters/p5-JSON-XS \
		devel/p5-App-Cmd \
		devel/p5-File-Slurp \
		devel/p5-Import-Into \
		devel/p5-Test-CheckManifest \
		devel/p5-Test-File-Contents \
		devel/p5-Test-Perl-Critic \
		devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage \
		devel/p5-TOML

.include <bsd.port.mk>
