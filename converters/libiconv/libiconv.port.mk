# $OpenBSD: libiconv.port.mk,v 1.7 2016/09/12 11:52:42 naddy Exp $

# The RUN_DEPENDS entry is to ensure libiconv is installed. This is
# necessary so that we have charset.alias installed on static archs.
# Typically installed in PREFIX/lib.
LIB_DEPENDS +=			converters/libiconv
RUN_DEPENDS +=			converters/libiconv
WANTLIB +=			iconv>=2
