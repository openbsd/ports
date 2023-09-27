COMMENT =		example RPKI data
CATEGORIES =		net
HOMEPAGE =		https://www.rpkiviews.org
MAINTAINER =		Job Snijders <job@openbsd.org>

# public domain
PERMIT_PACKAGE =	Yes

DATE =			2023/08/03
TIME =			T000429Z
DISTNAME =		rpki-${DATE:S|/||g}${TIME}
PKGNAME =		rpki-data-${DATE:S|/|.|g}.${TIME:T%Z=%}

SITES =	https://dango.attn.jp/rpkidata/josephine.sobornost.net/${DATE}/ \
	http://josephine.sobornost.net/josephine.sobornost.net/rpkidata/${DATE}/
EXTRACT_SUFX =		.tgz
EXTRACT_ONLY =		# empty
PKG_ARCH =		*
NO_BUILD =		Yes
NO_TEST =		Yes

# ignore time-wasting pkg_locate(1) on +300k files, they are unique
UPDATE_PLIST_ARGS =	-F

do-install:
	${TAR} -xzf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} \
	    -C ${PREFIX} -s /${DISTNAME}/rpkidata/

.include <bsd.port.mk>
