COMMENT =	rspamd integration to the OpenSMTPD daemon

# V is used in opensmtpd-filters/Makefile.inc
V =		0.1.7

MODGO_MODNAME =	github.com/poolpOrg/filter-rspamd
MODGO_VERSION =	v${V}

DISTNAME =	filter-rspamd-${MODGO_VERSION:S/v//}
REVISION =	0

FILTER_NAME =	rspamd

CATEGORIES =	mail
HOMEPAGE =	https://github.com/poolpOrg/filter-rspamd/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>
# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =	c pthread
MODULES =	lang/go
NO_TEST =	Yes

MODGO_MODULES =	\
	golang.org/x/sys	v0.0.0-20200821140526-fda516888d29

.include <bsd.port.mk>
