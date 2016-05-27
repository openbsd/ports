# $OpenBSD: Makefile,v 1.3 2016/05/27 12:58:15 jasper Exp $

COMMENT =	lightweight shipper for system metrics

BEAT =		topbeat
VERSION =	1.2.3

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
