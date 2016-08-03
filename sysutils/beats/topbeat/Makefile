# $OpenBSD: Makefile,v 1.4 2016/08/03 09:34:39 ajacoutot Exp $

COMMENT =	lightweight shipper for system metrics

BEAT =		topbeat
VERSION =	1.2.3
REVISION =	0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	topbeat.yml topbeat.template.json

WANTLIB += c pthread

# XXX: Remove on upgrade
# https://github.com/elastic/gosigar/pull/22
post-extract:
	cp ${FILESDIR}/sigar_openbsd.go ${WRKDIST}/vendor/github.com/elastic/gosigar

.include <bsd.port.mk>
