COMMENT=        script to copy one's SSH keys to remote hosts
V=              10.3p1
DISTNAME=       openssh-${V}
PKGNAME=        ssh-copy-id-${V:S/p/pl/}
CATEGORIES=     sysutils

HOMEPAGE=       https://gitlab.com/phil_hands/ssh-copy-id
MAINTAINER=     Jan-Piet Mens <ports@jpmens.net>

# License free to use
PERMIT_PACKAGE= Yes

SITES=   	https://cdn.openbsd.org/pub/OpenBSD/OpenSSH/portable/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/contrib/ssh-copy-id ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/contrib/ssh-copy-id.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
