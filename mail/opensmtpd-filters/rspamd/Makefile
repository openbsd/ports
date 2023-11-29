COMMENT =	rspamd integration to the OpenSMTPD daemon

# V is used in opensmtpd-filters/Makefile.inc
V =		0.1.8
REVISION =	0

MODGO_MODNAME =	github.com/poolpOrg/filter-rspamd
MODGO_VERSION =	v${V}

DISTNAME =	filter-rspamd-${MODGO_VERSION:S/v//}

FILTER_NAME =	rspamd

CATEGORIES =	mail
HOMEPAGE =	https://github.com/poolpOrg/filter-rspamd/

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =	c pthread
MODULES =	lang/go
NO_TEST =	Yes
WRKDIST =	${WRKSRC}

MODGO_MODULES =	\
	golang.org/x/sys	v0.15.0

.include <bsd.port.mk>
