# $OpenBSD: Makefile,v 1.3 2019/03/09 12:18:31 sthen Exp $

BROKEN=	many crashes at runtime.
# basic things in CLI work but some others fail (see e.g. tests
# for pecl things; some work but many have crashes; backtraces often
# include setproctitle).
#
# simple pages in FPM work, others fail (e.g. with roundcube: login
# screen is displayed, actually logging in fails).

PV=		7.3
V=		${PV}.3

.include <bsd.port.mk>
