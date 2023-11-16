
COMMENT =	file locking with fcntl(2)

DISTNAME =	File-FcntlLock-0.22

CATEGORIES =	devel

MAINTAINER =	Renaud Allard <renaud@allard.it>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =	c perl

MODULES =	cpan

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mlp64}
LP64_ONLY =
.else
LP64_ONLY =	"@comment "
.endif
SUBST_VARS =	LP64_ONLY

.include <bsd.port.mk>
